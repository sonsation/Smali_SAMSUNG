.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyStationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Z)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Z)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->notifyDataSetChanged()V

    .line 110
    :cond_0
    return-void
.end method
