.class Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$1;
.super Ljava/lang/Object;
.source "AbsRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$000(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$000(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/FastScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/FastScroller;->setTintColor(I)V

    .line 125
    :cond_0
    return-void
.end method
