package org.ajstark.LinuxShell.Shell;

import org.ajstark.LinuxShell.CommandInfrastructure.BaseCommand;
import org.ajstark.LinuxShell.CommandInfrastructure.UnknowCommandException;

import java.util.*;

/**
 * Created by Albert on 11/5/16.
 *
 * @version $Id$
 *
 * This is a singelton Object responcible for creating Commandd Objects
 */
class CommandFactory {
    private static CommandFactory factory;

    private HashMap<String, String> map;

    // prevents other objects from instaintiating  CommandFactory Objects
    private CommandFactory() {

        map = new HashMap<>();

        map.put( "LS",        "org.ajstark.LinuxShell.Command.LsCommand" );
        map.put( "GREP",      "org.ajstark.LinuxShell.Command.GrepCommand" );
        map.put( "PWD",       "org.ajstark.LinuxShell.Command.PwdCommand" );
        map.put( "CD",        "org.ajstark.LinuxShell.Command.CdCommand" );
        map.put( "ENV_VAR",   "org.ajstark.LinuxShell.Command.SetEnvVarCommand" );
        map.put( "ENV",       "org.ajstark.LinuxShell.Command.EnvCommand" );
        map.put( "HISTORY",   "org.ajstark.LinuxShell.Command.HistoryCommand" );
    }


    static CommandFactory getInstance() {
        if (factory == null) {
            factory = new CommandFactory();
        }

        return factory;
    }

    BaseCommand getCommand( String commandStrBeingParsed, ArrayList<String> commandStrList)
            throws UnknowCommandException {

        if (commandStrList.isEmpty()) {
            throw new UnknowCommandException( commandStrBeingParsed );
       }

        String commandName = commandStrList.get(0);
        commandName = commandName.trim();
        commandName = commandName.toUpperCase();
        String className = map.get(commandName);

        if (className == null) {
            throw new UnknowCommandException( commandStrBeingParsed, commandName, "Class Name Is Null"  );
        }

        BaseCommand cmd;
        try {
            Class cmdObj = Class.forName(className);

            cmd = (BaseCommand) cmdObj.newInstance();
        } catch (Exception excp) {
            UnknowCommandException missingCmdExcp = new UnknowCommandException( commandStrBeingParsed, commandName,
                                                                                className );
            missingCmdExcp.initCause(excp);

            throw missingCmdExcp;
        }

        cmd.setCommandStrBeingParsed(commandStrBeingParsed);
        cmd.setCommandParameters(commandStrList);

        return cmd;
    }

}
