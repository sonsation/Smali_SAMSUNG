.class Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;
.super Ljava/lang/Object;
.source "AdFragmentIncrossVideo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "842"

    const-string v2, "8111"

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 132
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;->launchMySubscriptionActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBroadCastReceiver;->clearStickyAction()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 137
    return-void
.end method
