.class Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable$1;
.super Ljava/lang/Object;
.source "RedeemVoucherUsable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->userVoucherInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/RedeemVoucherUsable;)V

    .line 36
    return-void
.end method
