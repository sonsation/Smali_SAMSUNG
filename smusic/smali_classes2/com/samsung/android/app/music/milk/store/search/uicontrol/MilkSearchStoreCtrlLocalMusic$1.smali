.class Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreCtrlLocalMusic.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->disappearLocalMusicModeWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;->access$000(Lcom/samsung/android/app/music/milk/store/search/uicontrol/MilkSearchStoreCtrlLocalMusic;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 102
    return-void
.end method
