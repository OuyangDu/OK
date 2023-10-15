%% Finishing Teams
finishingTeam01=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam01');
finishingTeam02=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam02');
finishingTeam03=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam03');
finishingTeam04=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam04');
finishingTeam05=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam05');
finishingTeam06=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam06');
finishingTeam07=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam07');
finishingTeam08=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam08.csv');
finishingTeam09=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam09.csv');
finishingTeam10=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam10');
finishingTeam11=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam11');
finishingTeam12=readtable('C:/Users/ouyan/Desktop/OK/OK/finishing_team_data/finishingTeam12');
    finishingTeam01= finishingTeam01(:,{'date','actual_productivity'});
    finishingTeam02= finishingTeam02(:,{'date','actual_productivity'});
    finishingTeam03= finishingTeam03(:,{'date','actual_productivity'});
    finishingTeam04= finishingTeam04(:,{'date','actual_productivity'});
    finishingTeam05= finishingTeam05(:,{'date','actual_productivity'});
    finishingTeam06= finishingTeam06(:,{'date','actual_productivity'});
    finishingTeam07= finishingTeam07(:,{'date','actual_productivity'});
    finishingTeam08= finishingTeam08(:,{'date','actual_productivity'});
    finishingTeam09= finishingTeam09(:,{'date','actual_productivity'});
    finishingTeam10= finishingTeam10(:,{'date','actual_productivity'});
    finishingTeam11= finishingTeam11(:,{'date','actual_productivity'});
    finishingTeam12= finishingTeam12(:,{'date','actual_productivity'});
  

finishingTeams = {...
    finishingTeam01...
    finishingTeam02...
    finishingTeam03...
    finishingTeam04...
    finishingTeam05...
    finishingTeam06...
    finishingTeam07...
    finishingTeam08...
    finishingTeam09...
    finishingTeam10...
    finishingTeam11...
    finishingTeam12};
   


combinedDataforFinishing = finishingTeam01;  % Initialize with the first data structure
for i = 2:numel(finishingTeams)
   combinedDataforFinishing  = outerjoin(combinedDataforFinishing, finishingTeams{i}, 'Keys', 'date', 'MergeKeys', true);
end


combinedDataforFinishing.Properties.VariableNames={'date','team1productivityFinishing','team2productivityFinishing','team3productivityFinishing','team4productivityFinishing','team5productivityFinishing','team6productivityFinishing','team7productivityFinishing','team8productivityFinishing','team9productivityFinishing','team10productivityFinishing','team11productivityFinishing','team12productivityFinishing'}; 
writetable(combinedDataforFinishing,'combinedProductivityDataforFinishingTeams.csv')

%% Sewing Teams
sewingTeam01=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam01');
sewingTeam02=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam02');
sewingTeam03=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam03');
sewingTeam04=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam04');
sewingTeam05=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam05');
sewingTeam06=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam06');
sewingTeam07=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam07');
sewingTeam08=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam08.csv');
sewingTeam09=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam09.csv');
sewingTeam10=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam10');
sewingTeam11=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam11');
sewingTeam12=readtable('C:/Users/ouyan/Desktop/OK/OK/sewing_team_data/sewingTeam12');
    sewingTeam01= sewingTeam01(:,{'date','actual_productivity'});
    sewingTeam02= sewingTeam02(:,{'date','actual_productivity'});
    sewingTeam03= sewingTeam03(:,{'date','actual_productivity'});
    sewingTeam04= sewingTeam04(:,{'date','actual_productivity'});
    sewingTeam05= sewingTeam05(:,{'date','actual_productivity'});
    sewingTeam06= sewingTeam06(:,{'date','actual_productivity'});
    sewingTeam07= sewingTeam07(:,{'date','actual_productivity'});
    sewingTeam08= sewingTeam08(:,{'date','actual_productivity'});
    sewingTeam09= sewingTeam09(:,{'date','actual_productivity'});
    sewingTeam10= sewingTeam10(:,{'date','actual_productivity'});
    sewingTeam11= sewingTeam11(:,{'date','actual_productivity'});
    sewingTeam12= sewingTeam12(:,{'date','actual_productivity'});
  

sewingTeams = {...
    sewingTeam01...
    sewingTeam02...
    sewingTeam03...
    sewingTeam04...
    sewingTeam05...
    sewingTeam06...
    sewingTeam07...
    sewingTeam08...
    sewingTeam09...
    sewingTeam10...
    sewingTeam11...
    sewingTeam12};
   


combinedDataforSewing = sewingTeam01;  % Initialize with the first data structure
for i = 2:numel(sewingTeams)
   combinedDataforSewing  = outerjoin(combinedDataforSewing, sewingTeams{i}, 'Keys', 'date', 'MergeKeys', true);
end


combinedDataforSewing.Properties.VariableNames={'date','team1productivitySewing','team2productivitySewing','team3productivitySewing','team4productivitySewing','team5productivitySewing','team6productivitySewing','team7productivitySewing','team8productivitySewing','team9productivitySewing','team10productivitySewing','team11productivitySewing','team12productivitySewing'}; 
writetable(combinedDataforFinishing,'combinedProductivityDataforSewingTeams.csv')

Teams = {...
    sewingTeam01...
    sewingTeam02...
    sewingTeam03...
    sewingTeam04...
    sewingTeam05...
    sewingTeam06...
    sewingTeam07...
    sewingTeam08...
    sewingTeam09...
    sewingTeam10...
    sewingTeam11...
    sewingTeam12...
    finishingTeam01...
    finishingTeam02...
    finishingTeam03...
    finishingTeam04...
    finishingTeam05...
    finishingTeam06...
    finishingTeam07...
    finishingTeam08...
    finishingTeam09...
    finishingTeam10...
    finishingTeam11...
    finishingTeam12};
combinedDataforProductivity =sewingTeam01;
for i = 2:numel(Teams)
   combinedDataforProductivity   = outerjoin(combinedDataforProductivity , Teams{i}, 'Keys', 'date', 'MergeKeys', true);
end
combinedDataforProductivity.Properties.VariableNames={'date','team1productivitySewing','team2productivitySewing','team3productivitySewing','team4productivitySewing','team5productivitySewing','team6productivitySewing','team7productivitySewing','team8productivitySewing','team9productivitySewing','team10productivitySewing','team11productivitySewing','team12productivitySewing',...
    'team1productivityFinishing','team2productivityFinishing','team3productivityFinishing','team4productivityFinishing','team5productivityFinishing','team6productivityFinishing','team7productivityFinishing','team8productivityFinishing','team9productivityFinishing','team10productivityFinishing','team11productivityFinishing','team12productivityFinishing'}; 
writetable(combinedDataforProductivity,'combinedDataforProductivity.csv')
