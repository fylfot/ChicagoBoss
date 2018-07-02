%%-------------------------------------------------------------------
%% @author
%%     ChicagoBoss Team and contributors, see AUTHORS file in root directory
%% @end
%% @copyright
%%     This file is part of ChicagoBoss project.
%%     See AUTHORS file in root directory
%%     for license information, see LICENSE file in root directory
%% @end
%% @doc
%%-------------------------------------------------------------------

-module(boss_web).

-define(TIMEOUT, 25000).

-export([reload_routes/0,
        reload_translation/1,
        reload_all_translations/0,
        reload_init_scripts/0,
        get_all_routes/0,
        get_all_models/0,
        get_all_applications/0,
        base_url/1,
        domains/1,
        static_prefix/1,
        translator_pid/1,
        router_pid/1,
        application_info/1]).

reload_routes() ->
    gen_server:call(boss_web, reload_routes, ?TIMEOUT).

reload_translation(Locale) ->
    gen_server:call(boss_web, {reload_translation, Locale}, ?TIMEOUT).

reload_all_translations() ->
    gen_server:call(boss_web, reload_all_translations, ?TIMEOUT).

reload_init_scripts() ->
    gen_server:call(boss_web, reload_init_scripts, ?TIMEOUT).

get_all_routes() ->
    gen_server:call(boss_web, get_all_routes, ?TIMEOUT).

get_all_models() ->
    gen_server:call(boss_web, get_all_models, ?TIMEOUT).

get_all_applications() ->
    gen_server:call(boss_web, get_all_applications, ?TIMEOUT).

base_url(App) ->
    gen_server:call(boss_web, {base_url, App}, ?TIMEOUT).

domains(App) ->
    gen_server:call(boss_web, {domains, App}, ?TIMEOUT).

static_prefix(App) ->
    gen_server:call(boss_web, {static_prefix, App}, ?TIMEOUT).

translator_pid(AppName) ->
    gen_server:call(boss_web, {translator_pid, AppName}, ?TIMEOUT).

router_pid(AppName) ->
    gen_server:call(boss_web, {router_pid, AppName}, ?TIMEOUT).

application_info(App) ->
    gen_server:call(boss_web, {application_info, App}, ?TIMEOUT).
