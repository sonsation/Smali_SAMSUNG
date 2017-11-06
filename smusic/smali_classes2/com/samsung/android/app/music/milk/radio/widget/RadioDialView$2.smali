.class Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;
.super Ljava/lang/Object;
.source "RadioDialView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$400(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$500(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$402(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$502(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$602(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;I)I

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;->access$700(Lcom/samsung/android/app/music/milk/radio/widget/RadioDialView;)V

    .line 343
    :cond_1
    return-void
.end method
