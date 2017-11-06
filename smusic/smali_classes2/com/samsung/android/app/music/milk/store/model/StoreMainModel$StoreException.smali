.class public Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;
.super Ljava/lang/Exception;
.source "StoreMainModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoreException"
.end annotation


# instance fields
.field private final mErrorCode:I

.field private final mMessage:Ljava/lang/String;

.field private final mRspCode:I

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;
    .param p2, "rspCode"    # I
    .param p3, "errorCode"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 840
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->mRspCode:I

    .line 841
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->mErrorCode:I

    .line 842
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->mMessage:Ljava/lang/String;

    .line 843
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->mErrorCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getRspCode()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;->mRspCode:I

    return v0
.end method
