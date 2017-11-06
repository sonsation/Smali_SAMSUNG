.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;
.super Ljava/lang/Object;
.source "RadioHistoryAdapter.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->validateStationMoreMenu(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$RadioHistoryViewHolder;Landroid/database/Cursor;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

.field final synthetic val$stationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;->val$stationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter$2;->val$stationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 152
    return-void
.end method
