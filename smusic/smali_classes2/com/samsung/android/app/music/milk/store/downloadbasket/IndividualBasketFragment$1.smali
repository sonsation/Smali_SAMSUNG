.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;
.super Ljava/lang/Object;
.source "IndividualBasketFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->updateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs result([Ljava/lang/String;)V
    .locals 7
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v6, :cond_0

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    aget-object v1, p1, v3

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    .line 56
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aget-object v3, p1, v5

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 59
    :cond_0
    return-void
.end method
