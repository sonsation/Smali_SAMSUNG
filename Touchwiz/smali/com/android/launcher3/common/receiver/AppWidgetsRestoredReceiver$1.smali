.class final Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;
.super Landroid/os/AsyncTask;
.source "AppWidgetsRestoredReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

.field final synthetic val$idsToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/appwidget/AppWidgetHost;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;->val$idsToRemove:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;->val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;->val$idsToRemove:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 98
    .local v0, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;->val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 99
    const-string v2, "AppWidgetsRestoredReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget no longer present, appWidgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
