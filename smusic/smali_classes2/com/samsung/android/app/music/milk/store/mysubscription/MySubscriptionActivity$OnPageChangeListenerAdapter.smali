.class Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$OnPageChangeListenerAdapter;
.super Ljava/lang/Object;
.source "MySubscriptionActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPageChangeListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity$OnPageChangeListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 234
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "ScreenId":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 229
    return-void

    .line 219
    :pswitch_0
    const-string v0, "953"

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    const-string v0, "954"

    .line 223
    goto :goto_0

    .line 225
    :pswitch_2
    const-string v0, "952"

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
