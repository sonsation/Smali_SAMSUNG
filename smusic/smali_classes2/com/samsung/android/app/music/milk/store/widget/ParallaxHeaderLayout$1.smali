.class Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$1;
.super Ljava/lang/Object;
.source "ParallaxHeaderLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
