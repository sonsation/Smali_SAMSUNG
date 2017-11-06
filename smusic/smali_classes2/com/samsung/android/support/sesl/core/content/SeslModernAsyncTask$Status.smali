.class public final enum Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;
.super Ljava/lang/Enum;
.source "SeslModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

.field public static final enum FINISHED:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

.field public static final enum PENDING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

.field public static final enum RUNNING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->PENDING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    .line 104
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->RUNNING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    .line 108
    new-instance v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->FINISHED:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    sget-object v1, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->PENDING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->RUNNING:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->FINISHED:Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->$VALUES:[Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->$VALUES:[Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/sesl/core/content/SeslModernAsyncTask$Status;

    return-object v0
.end method
