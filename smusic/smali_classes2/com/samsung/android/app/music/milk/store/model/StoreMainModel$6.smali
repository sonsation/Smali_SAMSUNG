.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->requestTopNewUpdate(Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

.field final synthetic val$displayGroup:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->val$displayGroup:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 700
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$100(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;Lrx/Subscriber;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->val$displayGroup:Ljava/lang/String;

    .line 704
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreTopNewUpdate(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 742
    return-void
.end method
