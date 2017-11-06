.class Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$2;
.super Ljava/lang/Object;
.source "ArtistDetailActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 315
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 289
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 294
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 302
    const/4 v0, 0x0

    .line 305
    .local v0, "eventId":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "209"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void

    .line 296
    .end local v0    # "eventId":Ljava/lang/String;
    :pswitch_0
    const-string v0, "2201"

    .line 297
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 299
    .end local v0    # "eventId":Ljava/lang/String;
    :pswitch_1
    const-string v0, "2202"

    .line 300
    .restart local v0    # "eventId":Ljava/lang/String;
    goto :goto_0

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
