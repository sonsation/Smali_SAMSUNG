.class public final Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
.super Ljava/lang/ref/SoftReference;
.source "SoftReferenceSymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/util/SoftReferenceSymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SREntry"
.end annotation


# instance fields
.field public bucket:I

.field public next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field public prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 351
    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->initialize(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V

    .line 352
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CIILmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    invoke-direct {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;-><init>(Ljava/lang/String;[CII)V

    invoke-direct {p0, v0, p7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 360
    invoke-direct {p0, p5, p6}, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->initialize(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V

    .line 361
    return-void
.end method

.method private initialize(Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 364
    iput-object p1, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 365
    if-nez p1, :cond_0

    .line 368
    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    .line 369
    iput p2, p0, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    .line 370
    return-void

    .line 366
    :cond_0
    iput-object p0, p1, Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lmf/org/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0
.end method
