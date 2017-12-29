.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;
.super Landroid/os/Handler;
.source "FullScreenAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-get10(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/settings/display/FullScreenAppsShowTypePreference;->mSelectedShowType:I

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-set1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-set0(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-wrap2(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)V

    .line 188
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$1;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->-set1(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Z)Z

    goto :goto_0
.end method
