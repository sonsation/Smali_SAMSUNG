.class Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl$1;
.super Ljava/lang/Object;
.source "IndexScrollViewCompat.java"

# interfaces
.implements Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndexChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->access$600(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl$1;->this$0:Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;->access$600(Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$SepIndexScrollViewImpl;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;->onIndexChanged(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public onPressed(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 79
    return-void
.end method

.method public onReleased(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 84
    return-void
.end method
