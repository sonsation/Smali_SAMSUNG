.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;
.super Ljava/lang/Object;
.source "MyStationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;->showLoadingProgress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;Z)V
    .locals 0
    .param p1, "this$2"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;->this$2:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;->this$2:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1;->this$1:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu$1$1;->val$show:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;ZI)V

    .line 299
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
