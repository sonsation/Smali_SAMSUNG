.class Lcom/sec/android/app/camera/menu/OverlayHelp$10;
.super Ljava/lang/Object;
.source "OverlayHelp.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayHelp;->createInteractionGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

.field final synthetic val$guideView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayHelp;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    iput-object p2, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->val$guideView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1600(Lcom/sec/android/app/camera/menu/OverlayHelp;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1402(Lcom/sec/android/app/camera/menu/OverlayHelp;I)I

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$802(Lcom/sec/android/app/camera/menu/OverlayHelp;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->val$guideView:Landroid/view/View;

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1700(Lcom/sec/android/app/camera/menu/OverlayHelp;)Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/OverlayHelp$ViewPagerAdapter;->refreshAnimation(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayHelp$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->access$1400(Lcom/sec/android/app/camera/menu/OverlayHelp;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0
.end method
