.class Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;
.super Ljava/lang/Object;
.source "SemTriHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueVO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV1;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v1:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v1:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v2:Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
