.class public final Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;
.super Ljava/lang/Object;
.source "StateConvertibleImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCommands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    const-string v1, "Music"

    const-string v2, "LAUNCH_APP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    const-string v1, "GlobalMusic"

    const-string v2, "LAUNCH_APP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    const-string v1, "MyMusicTab"

    const-string v2, "MOVE_MAIN_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    const-string v1, "RadioTab"

    const-string v2, "MOVE_MAIN_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    const-string v1, "StoreTab"

    const-string v2, "MOVE_MAIN_TAB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    const-string v1, "keyword"

    const-string v2, "KEYWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertGlobalMenu;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertLocal;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertMyStations;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertPlayer;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertRadio;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertSearch;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertSettings;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/converter/ConvertStore;->init(Ljava/util/Map;Ljava/util/Map;)V

    .line 43
    return-void
.end method


# virtual methods
.method public convert(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 9
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "stateId":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mCommands:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v5, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v1, "command":Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->setLastState(Z)V

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->isLandingState()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->setLandingState(Z)V

    .line 59
    sget-object v6, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convert() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 62
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 63
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    .line 64
    .local v2, "p":Lcom/samsung/android/sdk/bixby/data/Parameter;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "parameterName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->addParameterName(Ljava/lang/String;)V

    .line 66
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    iget-object v6, p0, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;->mParameters:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "command":Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .end local v2    # "p":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v3    # "parameterName":Ljava/lang/String;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    :cond_1
    move-object v0, v5

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0

    .line 71
    .restart local v1    # "command":Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .restart local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    :cond_2
    return-object v1
.end method
