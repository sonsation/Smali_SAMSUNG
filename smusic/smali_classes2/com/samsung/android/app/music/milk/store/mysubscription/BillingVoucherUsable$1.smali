.class Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$1;
.super Ljava/lang/Object;
.source "BillingVoucherUsable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->userVoucherInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable$1;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;->access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/BillingVoucherUsable;)V

    .line 48
    return-void
.end method
