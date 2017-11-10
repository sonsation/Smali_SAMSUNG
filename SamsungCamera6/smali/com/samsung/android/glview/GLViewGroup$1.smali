.class Lcom/samsung/android/glview/GLViewGroup$1;
.super Ljava/lang/Object;
.source "GLViewGroup.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/glview/GLViewGroup;->sortViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/glview/GLView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/glview/GLViewGroup$1;->this$0:Lcom/samsung/android/glview/GLViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/glview/GLView;Lcom/samsung/android/glview/GLView;)I
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/samsung/android/glview/GLView;

    check-cast p2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup$1;->compare(Lcom/samsung/android/glview/GLView;Lcom/samsung/android/glview/GLView;)I

    move-result v0

    return v0
.end method
