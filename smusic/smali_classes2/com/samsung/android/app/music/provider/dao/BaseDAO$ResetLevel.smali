.class public Lcom/samsung/android/app/music/provider/dao/BaseDAO$ResetLevel;
.super Ljava/lang/Object;
.source "BaseDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/dao/BaseDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetLevel"
.end annotation


# static fields
.field public static final LEVEL_ACCOUNT_REMOVED:I = 0x1

.field public static final LEVEL_ACCOUNT_USER_CHANGED:I = 0x2

.field public static final LEVEL_FORCE_RESET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
