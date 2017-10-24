.class public Lcom/android/server/am/MARsDBManager$SCPMDBValue;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMDBValue"
.end annotation


# instance fields
.field public strAction:Ljava/lang/String;

.field public strCallee:Ljava/lang/String;

.field public strCaller:Ljava/lang/String;

.field public strCategory:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;
    .param p2, "_strCallee"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;
    .param p2, "_strCallee"    # Ljava/lang/String;
    .param p3, "_strCaller"    # Ljava/lang/String;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 298
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;
    .param p2, "_strCallee"    # Ljava/lang/String;
    .param p3, "_strCaller"    # Ljava/lang/String;
    .param p4, "_strAction"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    .line 304
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsDBManager;
    .param p2, "_Category"    # Ljava/lang/String;
    .param p3, "_strCallee"    # Ljava/lang/String;
    .param p4, "_strCaller"    # Ljava/lang/String;
    .param p5, "_strAction"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p2, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCategory:Ljava/lang/String;

    .line 309
    iput-object p3, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCallee:Ljava/lang/String;

    .line 310
    iput-object p4, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strCaller:Ljava/lang/String;

    .line 311
    iput-object p5, p0, Lcom/android/server/am/MARsDBManager$SCPMDBValue;->strAction:Ljava/lang/String;

    .line 307
    return-void
.end method
