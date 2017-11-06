.class public Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "LoadSettingsWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/UserSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mSettingCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 30
    const/16 v4, 0x259

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    const-string v1, "01"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    const-string v1, "02"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    const-string v1, "03"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    const-string v1, "04"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    const-string v1, "07"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method private getSerialSettingCodes()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 74
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mSettingCode:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "code":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 76
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    .end local v0    # "code":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private updateUserSetting(Lcom/samsung/android/app/music/common/model/UserSettings;)V
    .locals 7
    .param p1, "userSetting"    # Lcom/samsung/android/app/music/common/model/UserSettings;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 124
    sget-object v2, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateUserSetting"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserSettings;->getExplicit()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserSettings;->getExplicit()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "explicit":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUserSetting - explicit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    .end local v1    # "explicit":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserSettings;->getAutoRotateYn()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/UserSettings;->getAutoRotateYn()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "autoRotate":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateUserSetting - autoRotate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    invoke-static {v6}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setSimilarStationOption(Z)V

    .line 148
    .end local v0    # "autoRotate":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 132
    .restart local v1    # "explicit":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 144
    .end local v1    # "explicit":Ljava/lang/String;
    .restart local v0    # "autoRotate":Ljava/lang/String;
    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-static {v5}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setSimilarStationOption(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->getSerialSettingCodes()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->loadSettings(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/UserSettings;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/UserSettings;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/UserSettings;I)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/UserSettings;
    .param p5, "errorCode"    # I

    .prologue
    .line 54
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 56
    sget-object v1, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onApiHandled] LoadSetting response : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-nez p3, :cond_0

    .line 60
    move-object v0, p4

    .line 62
    .local v0, "userSetting":Lcom/samsung/android/app/music/common/model/UserSettings;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserSettings;->getGenreList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->updateVisibleGenres(Ljava/util/List;)V

    .line 64
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->updateUserSetting(Lcom/samsung/android/app/music/common/model/UserSettings;)V

    .line 69
    .end local v0    # "userSetting":Lcom/samsung/android/app/music/common/model/UserSettings;
    :cond_0
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/UserSettings;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/UserSettings;I)V

    return-void
.end method

.method public updateVisibleGenres(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "genreIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 86
    :cond_0
    sget-object v4, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[updateVisibleGenres] call clear genre visible"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->clearGenreVisibilty(Z)V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 90
    :cond_2
    const/4 v2, 0x0

    .line 91
    .local v2, "genreVisibilityChanged":Z
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getVisibleGenres()Ljava/util/Collection;

    move-result-object v0

    .line 92
    .local v0, "currentVisibles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 94
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "genreId":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    .end local v1    # "genreId":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    .restart local v1    # "genreId":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 103
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 104
    const/4 v2, 0x1

    .line 116
    .end local v1    # "genreId":Ljava/lang/String;
    :cond_5
    :goto_2
    if-eqz v2, :cond_1

    .line 117
    sget-object v4, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[syncWithUserGenreSetting] Sync genre visibility from server"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/GenreDAO;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/music/provider/dao/GenreDAO;->setGenreVisibility(Ljava/util/List;)V

    goto :goto_0

    .line 108
    .restart local v1    # "genreId":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/samsung/android/app/music/service/milk/worker/LoadSettingsWorker;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[syncWithUserGenreSetting] Null Genre ID"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x1

    .line 110
    goto :goto_2

    .line 114
    .end local v1    # "genreId":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x1

    goto :goto_2
.end method
