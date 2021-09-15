guildMembers = {}

SLASH_GRILL1 = '/grill';
function SlashCmdList.GRILL()
    local members = GetNumGuildMembers();

    for i = 1, members, 1
    do
        SetGuildRosterSelection(i);
        local selectedGuildMember = GetGuildRosterSelection();
        local Name = GetGuildRosterInfo(selectedGuildMember);

        print(selectedGuildMember, RemoveServer(Name));
        guildMembers[selectedGuildMember] = RemoveServer(Name)
    end
end

function RemoveServer(player)
    return Split(player, "-")[1];
end

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
