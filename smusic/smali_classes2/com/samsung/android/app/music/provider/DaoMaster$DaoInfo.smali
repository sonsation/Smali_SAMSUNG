.class Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
.super Ljava/lang/Object;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/DaoMaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DaoInfo"
.end annotation


# instance fields
.field private mDao:Lcom/samsung/android/app/music/provider/dao/BaseDAO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
            "<*>;"
        }
    .end annotation
.end field

.field private mOrderCreateTable:I

.field private mOrderCreateTrigger:I

.field private mOrderCreateView:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)V
    .locals 0
    .param p2, "orderTable"    # I
    .param p3, "orderView"    # I
    .param p4, "orderTrigger"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
            "<*>;III)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "dao":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mDao:Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    .line 69
    iput p2, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mOrderCreateTable:I

    .line 70
    iput p4, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mOrderCreateTrigger:I

    .line 71
    iput p3, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mOrderCreateView:I

    .line 72
    return-void
.end method

.method public static create(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    .locals 1
    .param p1, "orderTable"    # I
    .param p2, "orderView"    # I
    .param p3, "orderTrigger"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
            "<*>;III)",
            "Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "dao":Lcom/samsung/android/app/music/provider/dao/BaseDAO;, "Lcom/samsung/android/app/music/provider/dao/BaseDAO<*>;"
    new-instance v0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;-><init>(Lcom/samsung/android/app/music/provider/dao/BaseDAO;III)V

    .line 76
    .local v0, "info":Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;
    return-object v0
.end method


# virtual methods
.method public getDao()Lcom/samsung/android/app/music/provider/dao/BaseDAO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/provider/dao/BaseDAO",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mDao:Lcom/samsung/android/app/music/provider/dao/BaseDAO;

    return-object v0
.end method

.method public getTableOrder()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mOrderCreateTable:I

    return v0
.end method

.method public getTriggerOrder()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mOrderCreateTrigger:I

    return v0
.end method

.method public getViewOrder()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/app/music/provider/DaoMaster$DaoInfo;->mOrderCreateView:I

    return v0
.end method
