.class Lcom/android/launcher3/util/logging/SALogging$QOAction;
.super Ljava/lang/Object;
.source "SALogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/logging/SALogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QOAction"
.end annotation


# instance fields
.field mItemType:I

.field mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "itemType"    # I

    .prologue
    .line 1476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1477
    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mName:Ljava/lang/String;

    .line 1478
    iput p2, p0, Lcom/android/launcher3/util/logging/SALogging$QOAction;->mItemType:I

    .line 1479
    return-void
.end method
