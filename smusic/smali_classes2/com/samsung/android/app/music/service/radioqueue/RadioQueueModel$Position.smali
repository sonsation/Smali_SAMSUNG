.class public Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel$Position;
.super Ljava/lang/Object;
.source "RadioQueueModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioQueueModel$Position$Def;
    }
.end annotation


# static fields
.field public static final CURRENT:I = 0x1

.field public static final MAX:I = 0x3

.field public static final NEXT:I = 0x2

.field public static final PREV:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
