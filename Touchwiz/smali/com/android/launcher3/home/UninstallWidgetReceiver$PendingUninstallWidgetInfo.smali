.class Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;
.super Lcom/android/launcher3/home/ExternalRequestInfo;
.source "UninstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/UninstallWidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingUninstallWidgetInfo"
.end annotation


# instance fields
.field final appWidgetId:I

.field final data:Landroid/content/Intent;

.field final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;J)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "time"    # J

    .prologue
    .line 74
    const/4 v0, 0x4

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/launcher3/home/ExternalRequestInfo;-><init>(ILcom/android/launcher3/common/compat/UserHandleCompat;J)V

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->data:Landroid/content/Intent;

    .line 76
    iput-object p2, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->appWidgetId:I

    .line 79
    return-void
.end method


# virtual methods
.method public encodeToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 84
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 85
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "type"

    .line 86
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "time"

    .line 87
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->requestTime:J

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v2

    const-string v3, "appwidgetid"

    .line 88
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->appWidgetId:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v1

    .line 89
    .local v1, "json":Lorg/json/JSONStringer;
    invoke-virtual {v1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v1    # "json":Lorg/json/JSONStringer;
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "UninstallWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when adding uninstall widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTargetPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public runRequestInfo(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    .line 99
    .local v6, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->appWidgetId:I

    const/4 v5, 0x0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HomeLoader;->removeWorkspaceItem(ZILjava/lang/String;Landroid/content/Intent;Z)V

    .line 100
    return-void
.end method
