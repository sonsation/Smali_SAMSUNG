.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 707
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$100(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabViewSelected(I)V

    .line 708
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;IZ)V

    .line 710
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$300(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/music/milk/event/EventManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$300(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/music/milk/event/EventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->onTabSelected(I)V

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->moveToPage(Landroid/content/Context;I)V

    .line 716
    :cond_1
    return-void
.end method
