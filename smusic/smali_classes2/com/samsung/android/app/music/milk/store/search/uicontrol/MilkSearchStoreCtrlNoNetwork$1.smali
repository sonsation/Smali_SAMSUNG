.class Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreCtrlNoNetwork.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->showNetworkLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;->access$000(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlNoNetwork;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 83
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 87
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 78
    return-void
.end method
