.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->access$000(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;)V

    .line 177
    return-void
.end method
