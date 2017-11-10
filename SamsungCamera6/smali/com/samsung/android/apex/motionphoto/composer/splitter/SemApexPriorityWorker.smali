.class public Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;
.super Ljava/lang/Object;
.source "SemApexPriorityWorker.java"


# instance fields
.field final priority:Ljava/lang/Integer;


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/splitter/SemApexPriorityWorker;->priority:Ljava/lang/Integer;

    return-void
.end method
