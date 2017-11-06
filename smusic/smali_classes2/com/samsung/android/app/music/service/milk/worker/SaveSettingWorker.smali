.class public Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "SaveSettingWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private isSaveGenre:Z

.field private mAutoRotateYn:Ljava/lang/String;

.field private mExplicit:Ljava/lang/String;

.field private mGenreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMyLocation:Ljava/lang/String;

.field private mPushNotification:Ljava/lang/String;

.field private mSettingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
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
    .line 25
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/HashMap;Ljava/util/ArrayList;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p7, "isSaveGenre"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "genreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0x25a

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 45
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mSettingMap:Ljava/util/HashMap;

    .line 46
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mGenreList:Ljava/util/ArrayList;

    .line 47
    iput-boolean p7, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->isSaveGenre:Z

    .line 48
    return-void
.end method

.method private getSerialGenreIds(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 5
    .param p2, "isSaveGenre"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "genreIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 91
    .local v1, "index":I
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 100
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 101
    const-string v3, ""

    .line 107
    :goto_1
    return-object v3

    .line 103
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v11

    .line 56
    .local v11, "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mSettingMap:Ljava/util/HashMap;

    const-string v1, "explicit"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mExplicit:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mSettingMap:Ljava/util/HashMap;

    const-string v1, "auto_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mAutoRotateYn:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mGenreList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mGenreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mGenreList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 62
    .local v9, "genreID":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationDAO;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/provider/dao/StationDAO;->toggleGenreVisibility(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v8

    .line 64
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "genreID":Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 69
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWork : Device user, do not save : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_1
    return-object v2

    .line 72
    :cond_2
    const-string v0, "genre_id"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->getVisibleGenreColumns(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 74
    .local v10, "genres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mReqId:I

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->isSaveGenre:Z

    .line 75
    invoke-direct {p0, v10, v3}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->getSerialGenreIds(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mExplicit:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mMyLocation:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mPushNotification:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mAutoRotateYn:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->saveSettings(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    goto :goto_1
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleGenreColumns(Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 116
    const/4 v7, 0x0

    .line 118
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Genre;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "genre_type not null AND genre_type != 2 AND genre_is_visible = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 122
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v6, "collections":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 132
    if-eqz v7, :cond_1

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 137
    .end local v6    # "collections":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-object v6

    .line 132
    :cond_2
    if-eqz v7, :cond_3

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-object v6, v9

    .line 137
    goto :goto_0

    .line 129
    :catch_0
    move-exception v8

    .line 130
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v7, :cond_3

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 132
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 133
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    .line 83
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 24
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/SaveSettingWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
