﻿-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SessionActionFailureDetails
	-- Add the parameters for the stored procedure here
	@sessionId varchar(50) = NULL
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
SELECT WorkingDirectory, ActionName, Success
  FROM [dbo].[SessionTasks]
  INNER JOIN TaskActions
  ON SessionTasks.TaskID = TaskActions.TaskId
    where sessionid=@sessionId and Success!=0

END
