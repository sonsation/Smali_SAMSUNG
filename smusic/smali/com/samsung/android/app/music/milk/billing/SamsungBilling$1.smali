.class Lcom/samsung/android/app/music/milk/billing/SamsungBilling$1;
.super Ljava/lang/Object;
.source "SamsungBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->windowDisable(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$1;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$1;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$002(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;Z)Z

    .line 197
    return-void
.end method
