.class Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 306
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;I)V

    .line 310
    return-void
.end method
