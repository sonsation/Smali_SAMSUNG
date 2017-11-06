.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
.super Ljava/lang/Exception;
.source "GLCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x22bf0df3af3ef805L


# instance fields
.field public final code:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 177
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;->code:I

    .line 178
    return-void
.end method
