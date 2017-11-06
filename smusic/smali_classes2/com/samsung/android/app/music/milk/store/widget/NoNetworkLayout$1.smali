.class Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;
.super Ljava/lang/Object;
.source "NoNetworkLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->_initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 193
    const-string v0, "NoNetworkLayout"

    const-string v1, "Click Retyr Button"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$000(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$100(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$200(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$300(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$400(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$300(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$302(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 203
    :cond_0
    const-string v0, "963"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$500(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "963"

    const-string v2, "9741"

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$302(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$400(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->access$300(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    return-void

    .line 212
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "963"

    const-string v2, "9743"

    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
