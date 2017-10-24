.class Lcom/android/systemui/recents/desktop/RecentsWindow$1;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/RecentsWindow;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/RecentsWindow;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 140
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-static {v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->-get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow$1;->this$0:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 144
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 146
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_1
    return v2
.end method
