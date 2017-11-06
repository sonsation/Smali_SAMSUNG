.class Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$5;
.super Ljava/lang/Object;
.source "AbsRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->initialized(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 258
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$5;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$300(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;I)V

    .line 261
    return-void
.end method
