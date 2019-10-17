% This script generates a series of plots showing bounds and initial guess
%
% Author: Antoine Falisse
% Date: 12/19/2018
% 
suptitle_Fontsize = 16;
figure()
for i = 1:size(bounds.QsQdots.lower,2)
    subplot(5,4,i)
    plot([1,N],[bounds.QsQdots.upper(:,i),bounds.QsQdots.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.QsQdots.lower(:,i),bounds.QsQdots.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.QsQdots(:,i),'k','linewidth',2);
end
s = suptitle('Qs and Qdots');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:size(bounds.Qdotdots.lower,2)
    subplot(4,3,i)
    plot([1,N],[bounds.Qdotdots.upper(:,i),bounds.Qdotdots.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.Qdotdots.lower(:,i),bounds.Qdotdots.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.Qdotdots(:,i),'k','linewidth',2);
end
s = suptitle('Time derivative of Qdots');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:NMuscle
    subplot(5,4,i)
    plot([1,N],[bounds.a.upper(:,i),bounds.a.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.a.lower(:,i),bounds.a.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.a(:,i),'k','linewidth',2);
end
s = suptitle('Muscle activations');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:NMuscle
    subplot(5,4,i)
    plot([1,N],[bounds.vA.upper(:,i),bounds.vA.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.vA.lower(:,i),bounds.vA.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.a(:,i),'k','linewidth',2);
end
s = suptitle('Time derivative of muscle activations');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:NMuscle
    subplot(5,4,i)
    plot([1,N],[bounds.FTtilde.upper(:,i),bounds.FTtilde.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.FTtilde.lower(:,i),bounds.FTtilde.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.a(:,i),'k','linewidth',2);
end
s = suptitle('Muscle-tendon forces');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:NMuscle
    subplot(5,4,i)
    plot([1,N],[bounds.dFTtilde.upper(:,i),bounds.dFTtilde.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.dFTtilde.lower(:,i),bounds.dFTtilde.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.a(:,i),'k','linewidth',2);
end
s = suptitle('Time derivative of muscle-tendon forces');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:nq.trunk
    plot([1,N],[bounds.a_b.upper(:,i),bounds.a_b.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.a_b.lower(:,i),bounds.a_b.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.a_b(:,i),'k','linewidth',2);
end
s = suptitle('Back actuator activations');
set(s,'Fontsize',suptitle_Fontsize)
figure()
for i = 1:nq.trunk
    plot([1,N],[bounds.e_b.upper(:,i),bounds.e_b.upper(:,i)],...
        'b--','linewidth',2);
    hold on
    plot([1,N],[bounds.e_b.lower(:,i),bounds.e_b.lower(:,i)],...
        'r--','linewidth',2);
    plot(guess.e_b(:,i),'k','linewidth',2);
end
s = suptitle('Back actuator excitations');
set(s,'Fontsize',suptitle_Fontsize)