.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$1;
.super Ljava/lang/Object;
.source "SubscriptionBasketFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->updateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs result([Ljava/lang/String;)V
    .locals 3
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 50
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method
