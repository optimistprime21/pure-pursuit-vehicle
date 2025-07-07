% To plot the path for Ld=5. First params.m must be run.

out = sim('bicycle_model');
X = squeeze(out.x.Data);
Y = squeeze(out.y.Data);
theta = out.theta.Data;
t = out.tout;  


figure;
plot(X, Y, 'b-', 'LineWidth', 2);   
hold on;
plot(X(1), Y(1), 'go', 'MarkerSize', 8, 'DisplayName', 'Start');  
plot(X(end), Y(end), 'ro', 'MarkerSize', 8, 'DisplayName', 'End'); 
xlabel('X Position [m]');
ylabel('Y Position [m]');
title('Output Path of the Vehicle');
grid on;
axis equal;
legend('Vehicle Path', 'Start', 'End');

plot(waypoints(:,1), waypoints(:,2), '-o');
xlabel('X');
ylabel('Y');
title('Waypoint Path');
grid on;

