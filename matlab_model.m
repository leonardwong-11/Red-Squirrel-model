mdl = 'simulink_model';
load_system(mdl)

alpha = 1;
gamma = 0.2;
delta = 1;

beta = 0:0.05:1;
culling_rate = 0:0.05:1;

y20 = zeros(length(beta), length(culling_rate));

for i = 1:length(beta)
    for j = 1:length(culling_rate)

        in = Simulink.SimulationInput(mdl);
        in = in.setVariable('beta', beta(i));
        in = in.setVariable('alpha', alpha);
        in = in.setVariable('gamma', gamma);
        in = in.setVariable('delta', delta);
        in = in.setVariable('h', culling_rate(j));

        out = sim(in);

        t = out.simout.time;
        y = out.simout.signals.values;

        y20(i,j) = interp1(t,y,20);

    end
end

figure

imagesc(beta, culling_rate, y20')
set(gca,'YDir','normal')

xlabel('\beta')
ylabel('Culling rate, h')
title('Population at t = 20')

cb = colorbar;
ylabel(cb,'Population')

colormap(parula)

threshold = 100;

required_h = NaN(size(beta));

for i = 1:length(beta)

    idx = find(y20(i,:) >= threshold,1,'first');

    if ~isempty(idx)
        required_h(i) = culling_rate(idx);
    end

end

figure

plot(beta,required_h,'-o','LineWidth',2)

xlabel('\beta')
ylabel('Minimum culling rate')

title('Minimum culling required to achieve target population')

grid on