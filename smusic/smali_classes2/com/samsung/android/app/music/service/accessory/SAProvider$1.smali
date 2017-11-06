.class Lcom/samsung/android/app/music/service/accessory/SAProvider$1;
.super Ljava/lang/Object;
.source "SAProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/accessory/SAProvider;->retryLogic(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/accessory/SAProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/accessory/SAProvider;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$1;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/SAProvider$1;->this$0:Lcom/samsung/android/app/music/service/accessory/SAProvider;

    invoke-static {}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$000()Lcom/samsung/android/sdk/accessory/SAPeerAgent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/accessory/SAProvider;->access$100(Lcom/samsung/android/app/music/service/accessory/SAProvider;Lcom/samsung/android/sdk/accessory/SAPeerAgent;)V

    .line 213
    return-void
.end method
