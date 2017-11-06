.class final Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;
.super Ljava/lang/Object;
.source "SmartStationUtils.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeedAsync(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$seed:Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;->val$seed:Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;->val$seed:Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->access$100(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 116
    return-void
.end method
