.class Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;
.super Ljava/lang/Object;
.source "ResizableSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ResizableSpinner;->requestLayout()V

    .line 36
    return-void
.end method
