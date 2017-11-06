.class Lcom/samsung/android/app/music/common/activity/AboutActivity$6;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/AboutActivity;->initLinkText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/AboutActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/AboutActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$6;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    const/4 v1, -0x1

    .line 181
    .local v1, "policyType":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 197
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$6;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    const-class v3, Lcom/samsung/android/app/music/common/activity/AboutPolicyActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    const-string/jumbo v2, "policy_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/AboutActivity$6;->this$0:Lcom/samsung/android/app/music/common/activity/AboutActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/common/activity/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    return-void

    .line 183
    .end local v0    # "i":Landroid/content/Intent;
    :pswitch_0
    const/4 v1, 0x0

    .line 185
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "404"

    const-string v4, "5073"

    .line 186
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v1, 0x1

    .line 192
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "404"

    const-string v4, "5072"

    .line 193
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f1200f2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
