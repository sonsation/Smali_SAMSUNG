.class Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$2;
.super Ljava/lang/Object;
.source "VoucherFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnInputVoucher(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;->access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/VoucherFragment;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "954"

    const-string v2, "9531"

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
