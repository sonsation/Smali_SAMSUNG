.class public Lcom/android/launcher3/home/UninstallWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallWidgetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;
    }
.end annotation


# static fields
.field private static final ACTION_UNBIND_WIDGET:Ljava/lang/String; = "com.sec.android.launcher.action.UNBIND_WIDGET"

.field static final APPWIDGET_ID_KEY:Ljava/lang/String; = "appwidgetid"

.field private static final TAG:Ljava/lang/String; = "UninstallWidget"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static decode(Ljava/lang/String;Landroid/content/Context;)Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;
    .locals 8
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 110
    .local v2, "object":Lorg/json/JSONObject;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "data":Landroid/content/Intent;
    const-string v3, "appWidgetId"

    const-string v6, "appwidgetid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 114
    .local v4, "requestTime":J
    new-instance v3, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;

    invoke-direct {v3, v0, p1, v4, v5}, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0    # "data":Landroid/content/Intent;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v4    # "requestTime":J
    :goto_0
    return-object v3

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "UninstallWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception reading widget to remove: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 48
    if-eqz p2, :cond_0

    const-string v1, "com.sec.android.launcher.action.UNBIND_WIDGET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 51
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    new-instance v1, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;-><init>(Lcom/android/launcher3/home/UninstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    invoke-static {v1}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
