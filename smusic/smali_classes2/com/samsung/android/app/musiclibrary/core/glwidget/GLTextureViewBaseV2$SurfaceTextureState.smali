.class final enum Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
.super Ljava/lang/Enum;
.source "GLTextureViewBaseV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SurfaceTextureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

.field public static final enum Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

.field public static final enum Destroyed:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

.field public static final enum Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    const-string v1, "Initial"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 110
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    const-string v1, "Available"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 111
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    const-string v1, "Destroyed"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Destroyed:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Destroyed:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

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
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->$VALUES:[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    invoke-virtual {v0}, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    return-object v0
.end method
