.class Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;
.super Ljava/lang/Object;
.source "SemApexSplitManager.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;->priority:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;->priority:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;

    check-cast p2, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexSplitManager$WorkerComparator;->compare(Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;)I

    move-result v0

    return v0
.end method
