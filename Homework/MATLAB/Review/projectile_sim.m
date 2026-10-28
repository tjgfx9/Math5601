% Projectile Motion Simulation

% Parameters
v0 = input('\n\n\nEnter initial velocity (in m/s): ');                  % initial velocity (m/s)
angle_deg = input('\n\n\n\nEnter angle of attack (in degrees): ');          % launch angle in degrees
g = 9.81;                 % gravity (m/s^2)
angle_rad = deg2rad(angle_deg); % convert angle to radians

% Time vector
t = linspace(0, 2*v0*sin(angle_rad)/g, 100);  % time from 0 to when projectile hits ground

% Equations of motion
x = v0 * cos(angle_rad) * t;
y = v0 * sin(angle_rad) * t - 0.5 * g * t.^2;

% Plotting
figure;
plot(x, y, 'b-', 'LineWidth', 2)
xlabel('Distance (m)')
ylabel('Height (m)')
title('Projectile Motion Simulation')
grid on
axis equal